package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2840g;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3113s0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C3113s0 f1129a = new C3113s0();

    private /* synthetic */ C3113s0() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C2840g) obj).m537b((C2840g) obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}
