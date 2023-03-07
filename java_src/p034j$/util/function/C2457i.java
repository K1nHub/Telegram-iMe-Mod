package p034j$.util.function;

import p034j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2457i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f648a;

    /* renamed from: b */
    public final /* synthetic */ Function f649b;

    /* renamed from: c */
    public final /* synthetic */ Function f650c;

    public /* synthetic */ C2457i(Function function, Function function2, int i) {
        this.f648a = i;
        if (i != 1) {
            this.f649b = function;
            this.f650c = function2;
            return;
        }
        this.f649b = function;
        this.f650c = function2;
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f648a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p034j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f648a) {
            case 0:
                return this.f650c.apply(this.f649b.apply(obj));
            default:
                return this.f649b.apply(this.f650c.apply(obj));
        }
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f648a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
