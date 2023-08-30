package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3008C implements InterfaceC2955b {

    /* renamed from: a */
    public final /* synthetic */ int f797a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f798b;

    public /* synthetic */ C3008C(BiConsumer biConsumer, int i) {
        this.f797a = i;
        if (i == 1) {
            this.f798b = biConsumer;
        } else if (i != 2) {
            this.f798b = biConsumer;
        } else {
            this.f798b = biConsumer;
        }
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f797a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2947a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2947a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2947a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f797a) {
            case 0:
                this.f798b.accept(obj, obj2);
                return obj;
            case 1:
                this.f798b.accept(obj, obj2);
                return obj;
            default:
                this.f798b.accept(obj, obj2);
                return obj;
        }
    }
}
