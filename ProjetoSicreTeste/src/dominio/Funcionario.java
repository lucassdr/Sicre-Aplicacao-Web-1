package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_funcionarios")
@SequenceGenerator(name = "FUNCIONARIO_PK", sequenceName = "SEQ_FUNCIONARIO_PK", allocationSize = 1)
public class Funcionario {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FUNCIONARIO_PK")
	private Integer idFuncionario;

	@Column(name = "MATRICULA", length = 20, unique = true, nullable = false)
	private String matricula;

	@Column(name = "NOME", length = 255, nullable = false)
	private String nome;

	@Column(name = "ESTADO_CIVIL", length = 15, nullable = false)
	private String estadoCivil;

	@Column(name = "DATA_DE_NASCIMENTO", length = 10, nullable = false)
	private String dataNascimento;

	@Column(name = "SEXO", length = 9, nullable = false)
	private char sexo;

	@Column(name = "CPF", length = 14, nullable = false, unique = true)
	private String cpf;

	@Column(name = "FUNCAO", length = 255, nullable = false)
	private String funcao;

	public Funcionario() {
		super();

	}

	public Funcionario(Integer idFuncionario, String matricula, String nome, String estadoCivil, String dataNascimento,
			char sexo, String cpf, String funcao) {
		super();
		this.idFuncionario = idFuncionario;
		this.matricula = matricula;
		this.nome = nome;
		this.estadoCivil = estadoCivil;
		this.dataNascimento = dataNascimento;
		this.sexo = sexo;
		this.cpf = cpf;
		this.funcao = funcao;
	}

	public Integer getIdFuncionario() {
		return idFuncionario;
	}

	public void setIdFuncionario(Integer idFuncionario) {
		this.idFuncionario = idFuncionario;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

}
