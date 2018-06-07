package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_guia")
@SequenceGenerator(name = "GUIA_PK", sequenceName = "SEQ_GUIA_PK", allocationSize = 1)
public class GuiaDeViagem {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GUIA_PK")
	private Integer idGuia;

	@Column(name = "NUMERO_ONIBUS", length = 8, nullable = false)
	private String numeroOnibus;

	@Column(name = "NUMERO_LINHA", length = 255, nullable = false)
	private String numeroLinha;

	@Column(name = "HORARIO_INICIO", length = 255, nullable = false)
	private String horarioInicioViagem;

	@Column(name = "HORARIO_FISCAL", length = 255)
	private String horarioFiscal;

	@Column(name = "HORARIO_FIM", length = 255, nullable = false)
	private String horarioFimViagem;

	@Column(name = "QTD_PASSAGEIROS_INICIO", nullable = false)
	private Integer qtdPassageirosInicioViagem;

	@Column(name = "QTD_PASSAGEIROS_FIM", nullable = false)
	private Integer qtdPassageirosFimViagem;

	@Column(name = "MATRICULA_MOTORISTA", length = 20, nullable = false)
	private String matriculaMotorista;

	@Column(name = "MATRICULA_COBRADOR", length = 20, nullable = true)
	private String matriculaCobrador;

	public GuiaDeViagem() {
		super();

	}

	public GuiaDeViagem(Integer idGuia, String numeroOnibus, String numeroLinha, String horarioInicioViagem,
			String horarioFiscal, String horarioFimViagem, Integer qtdPassageirosInicioViagem,
			Integer qtdPassageirosFimViagem, String matriculaMotorista, String matriculaCobrador) {
		super();
		this.idGuia = idGuia;
		this.numeroOnibus = numeroOnibus;
		this.numeroLinha = numeroLinha;
		this.horarioInicioViagem = horarioInicioViagem;
		this.horarioFiscal = horarioFiscal;
		this.horarioFimViagem = horarioFimViagem;
		this.qtdPassageirosInicioViagem = qtdPassageirosInicioViagem;
		this.qtdPassageirosFimViagem = qtdPassageirosFimViagem;
		this.matriculaMotorista = matriculaMotorista;
		this.matriculaCobrador = matriculaCobrador;
	}

	public Integer getIdGuia() {
		return idGuia;
	}

	public void setIdGuia(Integer idGuia) {
		this.idGuia = idGuia;
	}

	public String getNumeroOnibus() {
		return numeroOnibus;
	}

	public void setNumeroOnibus(String numeroOnibus) {
		this.numeroOnibus = numeroOnibus;
	}

	public String getNumeroLinha() {
		return numeroLinha;
	}

	public void setNumeroLinha(String numeroLinha) {
		this.numeroLinha = numeroLinha;
	}

	public String getHorarioInicioViagem() {
		return horarioInicioViagem;
	}

	public void setHorarioInicioViagem(String horarioInicioViagem) {
		this.horarioInicioViagem = horarioInicioViagem;
	}

	public String getHorarioFiscal() {
		return horarioFiscal;
	}

	public void setHorarioFiscal(String horarioFiscal) {
		this.horarioFiscal = horarioFiscal;
	}

	public String getHorarioFimViagem() {
		return horarioFimViagem;
	}

	public void setHorarioFimViagem(String horarioFimViagem) {
		this.horarioFimViagem = horarioFimViagem;
	}

	public Integer getQtdPassageirosInicioViagem() {
		return qtdPassageirosInicioViagem;
	}

	public void setQtdPassageirosInicioViagem(Integer qtdPassageirosInicioViagem) {
		this.qtdPassageirosInicioViagem = qtdPassageirosInicioViagem;
	}

	public Integer getQtdPassageirosFimViagem() {
		return qtdPassageirosFimViagem;
	}

	public void setQtdPassageirosFimViagem(Integer qtdPassageirosFimViagem) {
		this.qtdPassageirosFimViagem = qtdPassageirosFimViagem;
	}

	public String getMatriculaMotorista() {
		return matriculaMotorista;
	}

	public void setMatriculaMotorista(String matriculaMotorista) {
		this.matriculaMotorista = matriculaMotorista;
	}

	public String getMatriculaCobrador() {
		return matriculaCobrador;
	}

	public void setMatriculaCobrador(String matriculaCobrador) {
		this.matriculaCobrador = matriculaCobrador;
	}

}
