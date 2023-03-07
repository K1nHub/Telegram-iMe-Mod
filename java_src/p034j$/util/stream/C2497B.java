package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2497B implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2497B f686a = new C2497B();

    private /* synthetic */ C2497B() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        double[] dArr = (double[]) obj;
        double[] dArr2 = (double[]) obj2;
        AbstractC2704l.m392b(dArr, dArr2[0]);
        AbstractC2704l.m392b(dArr, dArr2[1]);
        dArr[2] = dArr[2] + dArr2[2];
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo121b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2442a(this, biConsumer);
    }
}
