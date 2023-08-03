package p033j$.util.function;

import p033j$.util.function.Function;
/* renamed from: j$.util.function.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2823i implements Function {

    /* renamed from: a */
    public final /* synthetic */ int f742a;

    /* renamed from: b */
    public final /* synthetic */ Function f743b;

    /* renamed from: c */
    public final /* synthetic */ Function f744c;

    public /* synthetic */ C2823i(Function function, Function function2, int i) {
        this.f742a = i;
        if (i != 1) {
            this.f743b = function;
            this.f744c = function2;
            return;
        }
        this.f743b = function;
        this.f744c = function2;
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        switch (this.f742a) {
            case 0:
                return Function.CC.$default$andThen(this, function);
            default:
                return Function.CC.$default$andThen(this, function);
        }
    }

    @Override // p033j$.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f742a) {
            case 0:
                return this.f744c.apply(this.f743b.apply(obj));
            default:
                return this.f743b.apply(this.f744c.apply(obj));
        }
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f742a) {
            case 0:
                return Function.CC.$default$compose(this, function);
            default:
                return Function.CC.$default$compose(this, function);
        }
    }
}
