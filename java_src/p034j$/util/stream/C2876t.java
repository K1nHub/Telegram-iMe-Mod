package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2572f;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2876t implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2876t f1053a = new C2876t();

    private /* synthetic */ C2876t() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2572f) obj).m555b((C2572f) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2566a(this, biConsumer);
    }
}
