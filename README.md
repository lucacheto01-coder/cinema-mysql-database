# Cinema Database — MySQL

## Descrizione del progetto

Database relazionale sviluppato con **MySQL** per la gestione di un archivio cinematografico.

Il progetto permette di organizzare le informazioni relative a **film, attori principali e case di produzione**, collegando le diverse entità attraverso chiavi primarie ed esterne.

Realizzato durante il mio percorso di formazione in **Web Development Full Stack**.

---

## Tecnologie utilizzate

- **MySQL**
- **SQL**
- **Database relazionali**

---

## Struttura del database

Il database `cinema` è composto da **3 tabelle**.

### 1. Tabella `attore`

Contiene le informazioni degli attori.

| Campo | Tipo | Descrizione |
|---|---|---|
| `id` | INT | Primary Key |
| `nome_arte` | TEXT | Nome d'arte |
| `nome` | TEXT | Nome |
| `cognome` | TEXT | Cognome |

### 2. Tabella `casa_di_produzione`

Contiene le informazioni delle case di produzione.

| Campo | Tipo | Descrizione |
|---|---|---|
| `id` | INT | Primary Key |
| `nome` | TEXT | Nome della casa di produzione |
| `localita` | TEXT | Località |

### 3. Tabella `film`

Contiene i film e i collegamenti alle altre tabelle.

| Campo | Tipo | Descrizione |
|---|---|---|
| `id` | INT | Primary Key |
| `titolo` | TEXT | Titolo del film |
| `id_attore_principale` | INT | Foreign Key → `attore(id)` |
| `id_casa_produzione` | INT | Foreign Key → `casa_di_produzione(id)` |

---

## Relazioni tra le tabelle

Il database implementa due relazioni **uno-a-molti (1:N)**:

- **Attore → Film:** un attore può essere associato a più film.
- **Casa di produzione → Film:** una casa di produzione può essere associata a più film.

Le relazioni sono gestite attraverso **Foreign Key**, garantendo l'integrità referenziale.

---

## Stored Procedure

Il database include una stored procedure chiamata `tutti_film()`, che permette di visualizzare tutti i record della tabella `film`.

### Esempio di utilizzo

```sql
CALL tutti_film();
```

---

## Installazione e utilizzo

1. Installare **MySQL**.
2. Scaricare il file `cinema.sql` dal repository.
3. Aprire **MySQL Workbench** o un altro client MySQL.
4. Eseguire lo script `cinema.sql`.
5. Interrogare il database tramite query SQL.

**Attenzione:** lo script elimina e ricrea il database `cinema` se già esistente. Utilizzarlo in un ambiente di test.

---

## Competenze applicate

- Creazione e gestione di database relazionali
- Definizione di tabelle e tipi di dati
- Utilizzo di **Primary Key** e **Foreign Key**
- Gestione delle relazioni tra tabelle
- Inserimento dei dati con `INSERT INTO`
- Interrogazione dei dati con `SELECT`
- Creazione e utilizzo di **Stored Procedure**
- Gestione dell'integrità referenziale

---

## Struttura del repository

```text
cinema-mysql-database/
├── cinema.sql
└── README.md
```

---

## Autore

Luca Carotenuto.

Progetto realizzato durante il percorso formativo **Web Developer Full Stack**.

**GitHub:** [lucacheto01-coder](https://github.com/lucacheto01-coder)
