package p035j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2924m implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2924m f996a = new C2924m();

    private /* synthetic */ C2924m() {
    }

    @Override // p035j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).add(obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo115b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2656a(this, biConsumer);
    }
}
