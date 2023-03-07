package org.web3j.abi.datatypes;

import java.util.List;
import org.web3j.abi.TypeReference;
import org.web3j.abi.Utils;
/* loaded from: classes6.dex */
public class Function {
    private List<Type> inputParameters;
    private String name;
    private List<TypeReference<Type>> outputParameters;

    public Function(String str, List<Type> list, List<TypeReference<?>> list2) {
        this.name = str;
        this.inputParameters = list;
        this.outputParameters = Utils.convert(list2);
    }

    public String getName() {
        return this.name;
    }

    public List<Type> getInputParameters() {
        return this.inputParameters;
    }
}
