package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;
import java.util.Objects;


/**
 * The persistent class for the squadra database table.
 * 
 */
@Entity
@NamedQuery(name="Squadra.findAll", query="SELECT s FROM Squadra s")
public class Squadra implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_squadra")
	private int idSquadra;

	@Column(name="cognome_utente")
	private String cognomeUtente;

	@Column(name="colore_squadra")
	private String coloreSquadra;

	@Column(name="email_utente")
	private String emailUtente;

	@Column(name="nome_squadra")
	private String nomeSquadra;

	@Column(name="nome_utente")
	private String nomeUtente;

	@Column(name="pareggio_squadra")
	private int pareggioSquadra;

	@Column(name="password_utente")
	private String passwordUtente;

	@Column(name="ruolo_utente")
	private int ruoloUtente;

	@Column(name="sconfitta_squadra")
	private int sconfittaSquadra;

	@Column(name="vittoria_squadra")
	private int vittoriaSquadra;

	//bi-directional many-to-one association to Giocatore
	@OneToMany(mappedBy="squadra")
	private List<Giocatore> giocatores;

	//bi-directional many-to-one association to Partita
	@OneToMany(mappedBy="squadra1")
	private List<Partita> partitas1;


	public Squadra() {
	}

	public int getIdSquadra() {
		return this.idSquadra;
	}

	public void setIdSquadra(int idSquadra) {
		this.idSquadra = idSquadra;
	}

	public String getCognomeUtente() {
		return this.cognomeUtente;
	}

	public void setCognomeUtente(String cognomeUtente) {
		this.cognomeUtente = cognomeUtente;
	}

	public String getColoreSquadra() {
		return this.coloreSquadra;
	}

	public void setColoreSquadra(String coloreSquadra) {
		this.coloreSquadra = coloreSquadra;
	}

	public String getEmailUtente() {
		return this.emailUtente;
	}

	public void setEmailUtente(String emailUtente) {
		this.emailUtente = emailUtente;
	}

	public String getNomeSquadra() {
		return this.nomeSquadra;
	}

	public void setNomeSquadra(String nomeSquadra) {
		this.nomeSquadra = nomeSquadra;
	}

	public String getNomeUtente() {
		return this.nomeUtente;
	}

	public void setNomeUtente(String nomeUtente) {
		this.nomeUtente = nomeUtente;
	}

	public int getPareggioSquadra() {
		return this.pareggioSquadra;
	}

	public void setPareggioSquadra(int pareggioSquadra) {
		this.pareggioSquadra = pareggioSquadra;
	}

	public String getPasswordUtente() {
		return this.passwordUtente;
	}

	public void setPasswordUtente(String passwordUtente) {
		this.passwordUtente = passwordUtente;
	}

	public int getRuoloUtente() {
		return this.ruoloUtente;
	}

	public void setRuoloUtente(int ruoloUtente) {
		this.ruoloUtente = ruoloUtente;
	}

	public int getSconfittaSquadra() {
		return this.sconfittaSquadra;
	}

	public void setSconfittaSquadra(int sconfittaSquadra) {
		this.sconfittaSquadra = sconfittaSquadra;
	}

	public int getVittoriaSquadra() {
		return this.vittoriaSquadra;
	}

	public void setVittoriaSquadra(int vittoriaSquadra) {
		this.vittoriaSquadra = vittoriaSquadra;
	}

	public List<Giocatore> getGiocatores() {
		return this.giocatores;
	}

	public void setGiocatores(List<Giocatore> giocatores) {
		this.giocatores = giocatores;
	}

	public Giocatore addGiocatore(Giocatore giocatore) {
		getGiocatores().add(giocatore);
		giocatore.setSquadra(this);

		return giocatore;
	}

	public Giocatore removeGiocatore(Giocatore giocatore) {
		getGiocatores().remove(giocatore);
		giocatore.setSquadra(null);

		return giocatore;
	}

	public List<Partita> getPartitas1() {
		return this.partitas1;
	}

	public void setPartitas1(List<Partita> partitas1) {
		this.partitas1 = partitas1;
	}

	public Partita addPartitas1(Partita partitas1) {
		getPartitas1().add(partitas1);
		partitas1.setSquadra1(this);

		return partitas1;
	}

	public Partita removePartitas1(Partita partitas1) {
		getPartitas1().remove(partitas1);
		partitas1.setSquadra1(null);

		return partitas1;
	}

	

	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Squadra other = (Squadra) obj;
		return Objects.equals(cognomeUtente, other.cognomeUtente) && Objects.equals(coloreSquadra, other.coloreSquadra)
				&& Objects.equals(emailUtente, other.emailUtente) && Objects.equals(giocatores, other.giocatores)
				&& Objects.equals(nomeSquadra, other.nomeSquadra) && Objects.equals(nomeUtente, other.nomeUtente)
				&& pareggioSquadra == other.pareggioSquadra && Objects.equals(partitas1, other.partitas1)
				&& ruoloUtente == other.ruoloUtente && sconfittaSquadra == other.sconfittaSquadra
				&& vittoriaSquadra == other.vittoriaSquadra;
	}

	@Override
	public String toString() {
		return "Squadra [idSquadra=" + idSquadra + ", cognomeUtente=" + cognomeUtente + ", coloreSquadra="
				+ coloreSquadra + ", emailUtente=" + emailUtente + ", nomeSquadra=" + nomeSquadra + ", nomeUtente="
				+ nomeUtente + ", pareggioSquadra=" + pareggioSquadra + ", passwordUtente=" + passwordUtente
				+ ", ruoloUtente=" + ruoloUtente + ", sconfittaSquadra=" + sconfittaSquadra + ", vittoriaSquadra="
				+ vittoriaSquadra + ", giocatores=" + giocatores + ", partitas1=" + partitas1 + ", partitas2="
				+ "]";
	}
	
}