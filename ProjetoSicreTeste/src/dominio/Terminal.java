package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="tab_terminais")
@SequenceGenerator(name = "TERMINAL_PK", sequenceName = "SEQ_TERMINAL_PK", allocationSize = 1)
public class Terminal {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TERMINAL_PK")
	private Integer idTerminal;

	@Column(name = "NOME", length = 255)
	private String nome;

	@Column(name = "LOGRADOURO", length = 255, nullable = false)
	private String logradouro;

	@Column(name = "NUMERO", length = 255, nullable = true)
	private String numero;

	@Column(name = "BAIRRO", length = 255, nullable = false)
	private String bairro;

	@Column(name = "CIDADE", length = 255, nullable = false)
	private String cidade;

	@Column(name = "COMPLEMENTO", length = 255, nullable = true)
	private String complemento;

	@Column(name = "NUMERACAO_DE_IDENTIFICACAO", length = 255, nullable = false)
	private String numeracaoIdentificacao;

	@Column(name = "CAPACIDADE_DE_ONIBUS", nullable = false)
	private Integer capacidadeDeOnibus;

	public Terminal() {
		super();
	}

	public Terminal(Integer idTerminal, String nome, String logradouro, String numero, String bairro, String cidade,
			String complemento, String numeracaoIdentificacao, Integer capacidadeDeOnibus) {
		super();
		this.idTerminal = idTerminal;
		this.nome = nome;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.complemento = complemento;
		this.numeracaoIdentificacao = numeracaoIdentificacao;
		this.capacidadeDeOnibus = capacidadeDeOnibus;
	}

	public Integer getIdTerminal() {
		return idTerminal;
	}

	public void setIdTerminal(Integer idTerminal) {
		this.idTerminal = idTerminal;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getNumeracaoIdentificacao() {
		return numeracaoIdentificacao;
	}

	public void setNumeracaoIdentificacao(String numeracaoIdentificacao) {
		this.numeracaoIdentificacao = numeracaoIdentificacao;
	}

	public Integer getCapacidadeDeOnibus() {
		return capacidadeDeOnibus;
	}

	public void setCapacidadeDeOnibus(Integer capacidadeDeOnibus) {
		this.capacidadeDeOnibus = capacidadeDeOnibus;
	}

}
