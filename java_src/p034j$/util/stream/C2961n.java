package p034j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2961n implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2961n f1001a = new C2961n();

    private /* synthetic */ C2961n() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2687a(this, biConsumer);
    }
}
