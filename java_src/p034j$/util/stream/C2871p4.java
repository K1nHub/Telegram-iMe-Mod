package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.p4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2871p4 implements InterfaceC2840k3 {

    /* renamed from: a */
    public final /* synthetic */ int f1017a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1018b;

    public /* synthetic */ C2871p4(InterfaceC2598l interfaceC2598l) {
        this.f1018b = interfaceC2598l;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        switch (this.f1017a) {
            case 0:
                AbstractC2862o1.m368f(this);
                throw null;
            default:
                AbstractC2862o1.m368f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1017a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m345b(Integer num) {
        switch (this.f1017a) {
            case 0:
                AbstractC2862o1.m372b(this, num);
                return;
            default:
                AbstractC2862o1.m372b(this, num);
                return;
        }
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        switch (this.f1017a) {
            case 0:
                Objects.requireNonNull(interfaceC2598l);
                return new C2597k(this, interfaceC2598l);
            default:
                Objects.requireNonNull(interfaceC2598l);
                return new C2597k(this, interfaceC2598l);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public /* synthetic */ void mo311n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    public /* synthetic */ C2871p4(C2759W3 c2759w3) {
        this.f1018b = c2759w3;
    }

    @Override // p034j$.util.stream.InterfaceC2840k3, p034j$.util.stream.InterfaceC2852m3
    public final void accept(int i) {
        switch (this.f1017a) {
            case 0:
                ((InterfaceC2598l) this.f1018b).accept(i);
                return;
            default:
                ((C2759W3) this.f1018b).accept(i);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        switch (this.f1017a) {
            case 0:
                AbstractC2862o1.m369e(this);
                throw null;
            default:
                AbstractC2862o1.m369e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1017a) {
            case 0:
                m345b((Integer) obj);
                return;
            default:
                m345b((Integer) obj);
                return;
        }
    }
}
