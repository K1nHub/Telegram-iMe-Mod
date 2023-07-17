package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3143x0 implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C3143x0 f1163a = new C3143x0();

    private /* synthetic */ C3143x0() {
    }

    @Override // p033j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2808a(this, biConsumer);
    }
}
