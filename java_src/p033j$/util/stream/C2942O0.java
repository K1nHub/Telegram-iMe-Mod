package p033j$.util.stream;

import p033j$.util.function.InterfaceC2837w;
/* renamed from: j$.util.stream.O0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2942O0 implements InterfaceC2837w {

    /* renamed from: a */
    public static final /* synthetic */ C2942O0 f892a = new C2942O0();

    private /* synthetic */ C2942O0() {
    }

    @Override // p033j$.util.function.InterfaceC2837w
    public final void accept(Object obj, long j) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j;
    }
}
