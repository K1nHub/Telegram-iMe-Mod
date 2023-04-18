package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2649f;
import p034j$.util.concurrent.C2643a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2953t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2953t f1054a = new C2953t();

    private /* synthetic */ C2953t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2649f) obj).m535b((C2649f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo101b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2643a(this, biConsumer);
    }
}
