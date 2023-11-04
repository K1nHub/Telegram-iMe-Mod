package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2839g;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3025e0 extends AbstractC3049i0 implements InterfaceC3058j3 {
    @Override // p033j$.util.stream.AbstractC3049i0, p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        if (this.f1100a) {
            return C2839g.m614d(((Double) this.f1101b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
