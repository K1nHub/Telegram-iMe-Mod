package p034j$.util.function;

import p034j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2581i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f653a;

    /* renamed from: b */
    public final /* synthetic */ Function f654b;

    /* renamed from: c */
    public final /* synthetic */ Function f655c;

    public /* synthetic */ C2581i(Function function, Function function2, int i) {
        this.f653a = i;
        if (i != 1) {
            this.f654b = function;
            this.f655c = function2;
            return;
        }
        this.f654b = function;
        this.f655c = function2;
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f653a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p034j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f653a) {
            case 0:
                return this.f655c.apply(this.f654b.apply(obj));
            default:
                return this.f654b.apply(this.f655c.apply(obj));
        }
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f653a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
