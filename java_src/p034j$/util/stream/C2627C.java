package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2627C implements InterfaceC2574b {

    /* renamed from: a */
    public final /* synthetic */ int f698a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f699b;

    public /* synthetic */ C2627C(BiConsumer biConsumer, int i) {
        this.f698a = i;
        if (i == 1) {
            this.f699b = biConsumer;
        } else if (i != 2) {
            this.f699b = biConsumer;
        } else {
            this.f699b = biConsumer;
        }
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f698a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2566a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2566a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2566a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f698a) {
            case 0:
                this.f699b.accept(obj, obj2);
                return obj;
            case 1:
                this.f699b.accept(obj, obj2);
                return obj;
            default:
                this.f699b.accept(obj, obj2);
                return obj;
        }
    }
}
