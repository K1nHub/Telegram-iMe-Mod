package p033j$.util.function;

import p033j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2962i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f752a;

    /* renamed from: b */
    public final /* synthetic */ Function f753b;

    /* renamed from: c */
    public final /* synthetic */ Function f754c;

    public /* synthetic */ C2962i(Function function, Function function2, int i) {
        this.f752a = i;
        if (i != 1) {
            this.f753b = function;
            this.f754c = function2;
            return;
        }
        this.f753b = function;
        this.f754c = function2;
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f752a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p033j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f752a) {
            case 0:
                return this.f754c.apply(this.f753b.apply(obj));
            default:
                return this.f753b.apply(this.f754c.apply(obj));
        }
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f752a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
