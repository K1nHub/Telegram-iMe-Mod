package p034j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p034j$.util.concurrent.C2643a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2911m implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2911m f991a = new C2911m();

    private /* synthetic */ C2911m() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).add(obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo101b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2643a(this, biConsumer);
    }
}
