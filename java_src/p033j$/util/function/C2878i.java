package p033j$.util.function;

import p033j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2878i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f743a;

    /* renamed from: b */
    public final /* synthetic */ Function f744b;

    /* renamed from: c */
    public final /* synthetic */ Function f745c;

    public /* synthetic */ C2878i(Function function, Function function2, int i) {
        this.f743a = i;
        if (i != 1) {
            this.f744b = function;
            this.f745c = function2;
            return;
        }
        this.f744b = function;
        this.f745c = function2;
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f743a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p033j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f743a) {
            case 0:
                return this.f745c.apply(this.f744b.apply(obj));
            default:
                return this.f744b.apply(this.f745c.apply(obj));
        }
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f743a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
