package kotlin.jvm.internal;

import java.io.Serializable;
/* compiled from: Lambda.kt */
/* loaded from: classes4.dex */
public abstract class Lambda<R> implements FunctionBase<R>, Serializable {
    private final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String renderLambdaToString = Reflection.renderLambdaToString((Lambda) this);
        Intrinsics.checkNotNullExpressionValue(renderLambdaToString, "renderLambdaToString(this)");
        return renderLambdaToString;
    }
}
