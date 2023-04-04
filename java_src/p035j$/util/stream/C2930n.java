package p035j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2930n implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2930n f1003a = new C2930n();

    private /* synthetic */ C2930n() {
    }

    @Override // p035j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2656a(this, biConsumer);
    }
}
