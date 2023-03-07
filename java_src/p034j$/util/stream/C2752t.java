package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2448f;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2752t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2752t f1048a = new C2752t();

    private /* synthetic */ C2752t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2448f) obj).m555b((C2448f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2442a(this, biConsumer);
    }
}
