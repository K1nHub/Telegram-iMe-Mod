package p035j$.util.stream;

import p035j$.util.function.InterfaceC2685w;
/* renamed from: j$.util.stream.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2790O0 implements InterfaceC2685w {

    /* renamed from: a */
    public static final /* synthetic */ C2790O0 f812a = new C2790O0();

    private /* synthetic */ C2790O0() {
    }

    @Override // p035j$.util.function.InterfaceC2685w
    public final void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }
}
