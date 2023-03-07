package org.web3j.abi;

import org.web3j.abi.datatypes.Type;
import org.web3j.utils.Collection;
/* loaded from: classes6.dex */
public final /* synthetic */ class FunctionEncoder$$ExternalSyntheticLambda0 implements Collection.Function {
    public static final /* synthetic */ FunctionEncoder$$ExternalSyntheticLambda0 INSTANCE = new FunctionEncoder$$ExternalSyntheticLambda0();

    private /* synthetic */ FunctionEncoder$$ExternalSyntheticLambda0() {
    }

    @Override // org.web3j.utils.Collection.Function
    public final Object apply(Object obj) {
        return ((Type) obj).getTypeAsString();
    }
}
