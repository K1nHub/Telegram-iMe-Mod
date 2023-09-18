package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
/* renamed from: j$.util.stream.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2924C implements InterfaceC2871b {

    /* renamed from: a */
    public final /* synthetic */ int f788a;

    /* renamed from: b */
    public final /* synthetic */ BiConsumer f789b;

    public /* synthetic */ C2924C(BiConsumer biConsumer, int i) {
        this.f788a = i;
        if (i == 1) {
            this.f789b = biConsumer;
        } else if (i != 2) {
            this.f789b = biConsumer;
        } else {
            this.f789b = biConsumer;
        }
    }

    @Override // p033j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f788a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2863a(this, function);
            case 1:
                Objects.requireNonNull(function);
                return new C2863a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2863a(this, function);
        }
    }

    @Override // p033j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f788a) {
            case 0:
                this.f789b.accept(obj, obj2);
                return obj;
            case 1:
                this.f789b.accept(obj, obj2);
                return obj;
            default:
                this.f789b.accept(obj, obj2);
                return obj;
        }
    }
}
