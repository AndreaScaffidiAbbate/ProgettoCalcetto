package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the partita database table.
 * 
 */
@Entity
@NamedQuery(name="Partita.findAll", query="SELECT p FROM Partita p")
public class Partita implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_partita")
	private int idPartita;

	@Column(name="campo_partita")
	private int campoPartita;

	
	@Column(name="data_partita")
	private String dataPartita;

	@Column(name="orario_partita")
	private String orarioPartita;
	
	@Column(name="esito_partita")
	private String esitoPartita;

	//bi-directional many-to-one association to Squadra
	@ManyToOne
	@JoinColumn(name="squadra_id_1")
	private Squadra squadra1;

	//bi-directional many-to-one association to Squadra
	@ManyToOne
	@JoinColumn(name="squadra_id_2")
	private Squadra squadra2;

	public Partita() {
	}

	public int getIdPartita() {
		return this.idPartita;
	}

	public void setIdPartita(int idPartita) {
		this.idPartita = idPartita;
	}

	public int getCampoPartita() {
		return this.campoPartita;
	}

	public void setCampoPartita(int campoPartita) {
		this.campoPartita = campoPartita;
	}

	public String getDataPartita() {
		return this.dataPartita;
	}

	public void setDataPartita(String dataPartita) {
		this.dataPartita = dataPartita;
	}

	public String getOrarioPartita() {
		return this.orarioPartita;
	}

	public void setOrarioPartita(String orarioPartita) {
		this.orarioPartita = orarioPartita;
	}

	public Squadra getSquadra1() {
		return this.squadra1;
	}

	public void setSquadra1(Squadra squadra1) {
		this.squadra1 = squadra1;
	}

	public Squadra getSquadra2() {
		return this.squadra2;
	}

	public void setSquadra2(Squadra squadra2) {
		this.squadra2 = squadra2;
	}


	
	public String getEsitoPartita() {
		return esitoPartita;
	}

	public void setEsitoPartita(String esitoPartita) {
		this.esitoPartita = esitoPartita;
	}

	@Override
	public String toString() {
		return "Partita [idPartita=" + idPartita + ", campoPartita=" + campoPartita + ", dataPartita=" + dataPartita
				+ ", orarioPartita=" + orarioPartita + ", squadra1=" + squadra1 + ", squadra2=" + squadra2 + "]";
	}
	
	
	

}