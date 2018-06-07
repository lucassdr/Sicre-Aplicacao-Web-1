package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_garagens")
@SequenceGenerator(name = "GARAGEM_PK", sequenceName = "SEQ_GARAGEM_PK", allocationSize = 1)
public class Garagem {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GARAGEM_PK")
	private Integer idGaragem;

	@Column(name = "NOME_GARAGEM", length = 255, nullable = false)
	private String nomeGaragem;

	@Column(name = "LOGRADOURO", length = 255, nullable = false)
	private String logradouro;

	@Column(name = "NUMERO", length = 100, nullable = false)
	private String numero;

	@Column(name = "BAIRRO", length = 255, nullable = false)
	private String bairro;

	@Column(name = "COMPLEMENTO", length = 255, nullable = false)
	private String complemento;

	@Column(name = "CIDADE", length = 255, nullable = false)
	private String cidade;

	@Column(name = "UF", length = 2, nullable = false)
	private char uf;

	@Column(name = "CAPACIDADE_DE_ONIBUS", nullable = false)
	private Integer capacidade;

	public Garagem() {
		super();

	}

	public Garagem(Integer idGaragem, String nomeGaragem, String logradouro, String numero, String bairro,
			String complemento, String cidade, char uf, Integer capacidade) {
		super();
		this.idGaragem = idGaragem;
		this.nomeGaragem = nomeGaragem;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.complemento = complemento;
		this.cidade = cidade;
		this.uf = uf;
		this.capacidade = capacidade;
	}

	public Integer getIdGaragem() {
		return idGaragem;
	}

	public void setIdGaragem(Integer idGaragem) {
		this.idGaragem = idGaragem;
	}

	public String getNomeGaragem() {
		return nomeGaragem;
	}

	public void setNomeGaragem(String nomeGaragem) {
		this.nomeGaragem = nomeGaragem;
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

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public char getUf() {
		return uf;
	}

	public void setUf(char uf) {
		this.uf = uf;
	}

	public Integer getCapacidade() {
		return capacidade;
	}

	public void setCapacidade(Integer capacidade) {
		this.capacidade = capacidade;
	}

}
