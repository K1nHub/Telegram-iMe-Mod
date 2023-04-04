package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.r4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2959r4 implements InterfaceC2922l3 {

    /* renamed from: a */
    public final /* synthetic */ int f1047a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1048b;

    public /* synthetic */ C2959r4(InterfaceC2679q interfaceC2679q) {
        this.f1048b = interfaceC2679q;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1047a) {
            case 0:
                AbstractC2938o1.m363f(this);
                throw null;
            default:
                AbstractC2938o1.m363f(this);
                throw null;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1047a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m338b(Long l) {
        switch (this.f1047a) {
            case 0:
                AbstractC2938o1.m366c(this, l);
                return;
            default:
                AbstractC2938o1.m366c(this, l);
                return;
        }
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        switch (this.f1047a) {
            case 0:
                Objects.requireNonNull(interfaceC2679q);
                return new C2678p(this, interfaceC2679q);
            default:
                Objects.requireNonNull(interfaceC2679q);
                return new C2678p(this, interfaceC2679q);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public /* synthetic */ void mo306n(long j) {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    public /* synthetic */ C2959r4(C2845Y3 c2845y3) {
        this.f1048b = c2845y3;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1047a) {
            case 0:
                AbstractC2938o1.m365d(this);
                throw null;
            default:
                AbstractC2938o1.m365d(this);
                throw null;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public final void accept(long j) {
        switch (this.f1047a) {
            case 0:
                ((InterfaceC2679q) this.f1048b).accept(j);
                return;
            default:
                ((C2845Y3) this.f1048b).accept(j);
                return;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1047a) {
            case 0:
                m338b((Long) obj);
                return;
            default:
                m338b((Long) obj);
                return;
        }
    }
}
