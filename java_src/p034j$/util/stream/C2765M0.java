package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2676h;
import p034j$.util.concurrent.C2643a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.M0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2765M0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2765M0 f787a = new C2765M0();

    private /* synthetic */ C2765M0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2676h) obj).m531b((C2676h) obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo101b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2643a(this, biConsumer);
    }
}
