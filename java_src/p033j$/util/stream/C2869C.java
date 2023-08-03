package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2869C implements InterfaceC2816b {

    /* renamed from: a */
    public final /* synthetic */ int f787a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f788b;

    public /* synthetic */ C2869C(BiConsumer biConsumer, int i) {
        this.f787a = i;
        if (i == 1) {
            this.f788b = biConsumer;
        } else if (i != 2) {
            this.f788b = biConsumer;
        } else {
            this.f788b = biConsumer;
        }
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f787a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2808a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f787a) {
            case 0:
                this.f788b.accept(obj, obj2);
                return obj;
            case 1:
                this.f788b.accept(obj, obj2);
                return obj;
            default:
                this.f788b.accept(obj, obj2);
                return obj;
        }
    }
}
