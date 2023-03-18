package p034j$.util.stream;

import java.util.LinkedHashSet;
import java.util.Objects;
import p034j$.util.concurrent.C2566a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2834m implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2834m f990a = new C2834m();

    private /* synthetic */ C2834m() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((LinkedHashSet) obj).add(obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2566a(this, biConsumer);
    }
}
