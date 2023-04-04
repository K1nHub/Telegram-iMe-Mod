package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.W0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2832W0 implements InterfaceC2679q {

    /* renamed from: a */
    public final /* synthetic */ int f856a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f857b;

    @Override // p035j$.util.function.InterfaceC2679q
    public final void accept(long j) {
        switch (this.f856a) {
            case 0:
                ((InterfaceC2928m3) this.f857b).accept(j);
                return;
            default:
                ((C2847Z0) this.f857b).f964a.accept(j);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        switch (this.f856a) {
            case 0:
                Objects.requireNonNull(interfaceC2679q);
                return new C2678p(this, interfaceC2679q);
            default:
                Objects.requireNonNull(interfaceC2679q);
                return new C2678p(this, interfaceC2679q);
        }
    }
}
