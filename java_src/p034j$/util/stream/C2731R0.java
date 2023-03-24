package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.R0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2731R0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2731R0 f826a = new C2731R0();

    private /* synthetic */ C2731R0() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo120b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2580a(this, biConsumer);
    }
}
