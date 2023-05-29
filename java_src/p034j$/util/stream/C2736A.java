package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.BiConsumer;
/* renamed from: j$.util.stream.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2736A implements BiConsumer {

    /* renamed from: a */
    public static final /* synthetic */ C2736A f683a = new C2736A();

    private /* synthetic */ C2736A() {
    }

    @Override // p034j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        double[] dArr = (double[]) obj;
        double[] dArr2 = (double[]) obj2;
        AbstractC2949l.m377b(dArr, dArr2[0]);
        AbstractC2949l.m377b(dArr, dArr2[1]);
        dArr[2] = dArr[2] + dArr2[2];
        dArr[3] = dArr[3] + dArr2[3];
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public BiConsumer mo106b(BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        return new C2687a(this, biConsumer);
    }
}
