package p033j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3082n implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C3082n f1083a = new C3082n();

    private /* synthetic */ C3082n() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}
