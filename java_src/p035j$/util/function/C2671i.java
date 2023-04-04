package p035j$.util.function;

import p035j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2671i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f659a;

    /* renamed from: b */
    public final /* synthetic */ Function f660b;

    /* renamed from: c */
    public final /* synthetic */ Function f661c;

    public /* synthetic */ C2671i(Function function, Function function2, int i) {
        this.f659a = i;
        if (i != 1) {
            this.f660b = function;
            this.f661c = function2;
            return;
        }
        this.f660b = function;
        this.f661c = function2;
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f659a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p035j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f659a) {
            case 0:
                return this.f661c.apply(this.f660b.apply(obj));
            default:
                return this.f660b.apply(this.f661c.apply(obj));
        }
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f659a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
