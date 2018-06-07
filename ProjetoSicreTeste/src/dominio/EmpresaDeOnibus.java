package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_empresas")
@SequenceGenerator(name = "EMPRESA_PK", sequenceName = "SEQ_EMPRESA_PK", allocationSize = 1)
public class EmpresaDeOnibus {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "EMPRESA_PK")
	private Integer idEmpresa;

	@Column(name = "CNPJ", length = 18, nullable = false, unique = true)
	private String cnpj;

	@Column(name = "RAZAO_SOCIAL", length = 255, nullable = false, unique = true)
	private String razaoSocial;

	@Column(name = "NOME_FANTASIA", length = 255, nullable = false, unique = true)
	private String nomeFantasia;

	@Column(name = "SIGLA", length = 2, nullable = false, unique = true)
	private char sigla;

	public EmpresaDeOnibus() {
		super();
	}

	public EmpresaDeOnibus(Integer idEmpresa, String cnpj, String razaoSocial, String nomeFantasia, char sigla) {
		super();
		this.idEmpresa = idEmpresa;
		this.cnpj = cnpj;
		this.razaoSocial = razaoSocial;
		this.nomeFantasia = nomeFantasia;
		this.sigla = sigla;
	}

	public Integer getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(Integer idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public char getSigla() {
		return sigla;
	}

	public void setSigla(char sigla) {
		this.sigla = sigla;
	}

}
