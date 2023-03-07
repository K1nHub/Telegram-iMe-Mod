package p034j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2716n implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2716n f992a = new C2716n();

    private /* synthetic */ C2716n() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2442a(this, biConsumer);
    }
}
