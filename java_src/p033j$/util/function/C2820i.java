package p033j$.util.function;

import p033j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2820i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f786a;

    /* renamed from: b */
    public final /* synthetic */ Function f787b;

    /* renamed from: c */
    public final /* synthetic */ Function f788c;

    public /* synthetic */ C2820i(Function function, Function function2, int i) {
        this.f786a = i;
        if (i != 1) {
            this.f787b = function;
            this.f788c = function2;
            return;
        }
        this.f787b = function;
        this.f788c = function2;
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f786a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p033j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f786a) {
            case 0:
                return this.f788c.apply(this.f787b.apply(obj));
            default:
                return this.f787b.apply(this.f788c.apply(obj));
        }
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f786a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
