package p034j$.util.function;

import p034j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2697i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f657a;

    /* renamed from: b */
    public final /* synthetic */ Function f658b;

    /* renamed from: c */
    public final /* synthetic */ Function f659c;

    public /* synthetic */ C2697i(Function function, Function function2, int i) {
        this.f657a = i;
        if (i != 1) {
            this.f658b = function;
            this.f659c = function2;
            return;
        }
        this.f658b = function;
        this.f659c = function2;
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f657a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p034j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f657a) {
            case 0:
                return this.f659c.apply(this.f658b.apply(obj));
            default:
                return this.f658b.apply(this.f659c.apply(obj));
        }
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f657a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
