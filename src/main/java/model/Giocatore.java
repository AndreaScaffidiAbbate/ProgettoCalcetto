package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the giocatore database table.
 * 
 */
@Entity
@NamedQuery(name="Giocatore.findAll", query="SELECT g FROM Giocatore g")
public class Giocatore implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_giocatore")
	private int idGiocatore;

	@Column(name="cognome_giocatore")
	private String cognomeGiocatore;

	@Column(name="nome_giocatore")
	private String nomeGiocatore;

	@Column(name="numero_giocatore")
	private int numeroGiocatore;

	@Column(name="ruolo_giocatore")
	private String ruoloGiocatore;

	//bi-directional many-to-one association to Squadra
	@ManyToOne
	@JoinColumn(name="squadra_id")
	private Squadra squadra;
	
	public Giocatore() {
	}

	
	
	public Giocatore(String cognomeGiocatore, String nomeGiocatore, int numeroGiocatore,
			String ruoloGiocatore, Squadra squadra) {
		super();
		this.cognomeGiocatore = cognomeGiocatore;
		this.nomeGiocatore = nomeGiocatore;
		this.numeroGiocatore = numeroGiocatore;
		this.ruoloGiocatore = ruoloGiocatore;
		this.squadra = squadra;
	}



	public int getIdGiocatore() {
		return this.idGiocatore;
	}

	public void setIdGiocatore(int idGiocatore) {
		this.idGiocatore = idGiocatore;
	}

	public String getCognomeGiocatore() {
		return this.cognomeGiocatore;
	}

	public void setCognomeGiocatore(String cognomeGiocatore) {
		this.cognomeGiocatore = cognomeGiocatore;
	}

	public String getNomeGiocatore() {
		return this.nomeGiocatore;
	}

	public void setNomeGiocatore(String nomeGiocatore) {
		this.nomeGiocatore = nomeGiocatore;
	}

	public int getNumeroGiocatore() {
		return this.numeroGiocatore;
	}

	public void setNumeroGiocatore(int numeroGiocatore) {
		this.numeroGiocatore = numeroGiocatore;
	}

	public String getRuoloGiocatore() {
		return this.ruoloGiocatore;
	}

	public void setRuoloGiocatore(String ruoloGiocatore) {
		this.ruoloGiocatore = ruoloGiocatore;
	}

	public Squadra getSquadra() {
		return this.squadra;
	}

	public void setSquadra(Squadra squadra) {
		this.squadra = squadra;
	}

}