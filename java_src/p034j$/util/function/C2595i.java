package p034j$.util.function;

import p034j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2595i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f654a;

    /* renamed from: b */
    public final /* synthetic */ Function f655b;

    /* renamed from: c */
    public final /* synthetic */ Function f656c;

    public /* synthetic */ C2595i(Function function, Function function2, int i) {
        this.f654a = i;
        if (i != 1) {
            this.f655b = function;
            this.f656c = function2;
            return;
        }
        this.f655b = function;
        this.f656c = function2;
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f654a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p034j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f654a) {
            case 0:
                return this.f656c.apply(this.f655b.apply(obj));
            default:
                return this.f655b.apply(this.f656c.apply(obj));
        }
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f654a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
