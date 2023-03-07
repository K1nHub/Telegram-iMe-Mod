package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2503C implements InterfaceC2450b {

    /* renamed from: a */
    public final /* synthetic */ int f693a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f694b;

    public /* synthetic */ C2503C(BiConsumer biConsumer, int i) {
        this.f693a = i;
        if (i == 1) {
            this.f694b = biConsumer;
        } else if (i != 2) {
            this.f694b = biConsumer;
        } else {
            this.f694b = biConsumer;
        }
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f693a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2442a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2442a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2442a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f693a) {
            case 0:
                this.f694b.accept(obj, obj2);
                return obj;
            case 1:
                this.f694b.accept(obj, obj2);
                return obj;
            default:
                this.f694b.accept(obj, obj2);
                return obj;
        }
    }
}
