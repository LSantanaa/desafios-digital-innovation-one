import java.util.Scanner;

public class Contador {
   public static void main(String[] args) {
		Scanner terminal = new Scanner(System.in);
		System.out.println("Digite o primeiro parâmetro");
		int parametroUm = terminal.nextInt();
		System.out.println("Digite o segundo parâmetro");
		int parametroDois = terminal.nextInt();
		
		try {
			//chamando o método contendo a lógica de contagem
			contar(parametroUm, parametroDois);
		
		}catch (ParametrosInvalidosException e) {
			System.out.println("O segundo parâmetro deve ser maior que o primeiro."); 
		}
		
	}
	static void contar(int parametroUm, int parametroDois ) throws ParametrosInvalidosException {
		//validar se parametroUm é MAIOR que parametroDois e lançar a exceção
		if(parametroUm > parametroDois){
            throw new ParametrosInvalidosException();
        }

		int contagem = parametroDois - parametroUm;
		
		System.out.println("Números entre os parametros: " + contagem);
		System.out.println("Lista de números entre " + parametroUm +" e "+ parametroDois);

        for(int index = 1; contagem > index; index++){
			System.out.println("Imprimindo número " + index + ": " + (parametroUm + index));
        }
	}
}
