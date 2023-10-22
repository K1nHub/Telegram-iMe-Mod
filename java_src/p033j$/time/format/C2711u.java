package p033j$.time.format;

import p033j$.time.AbstractC2724n;
import p033j$.time.C2686d;
import p033j$.time.chrono.InterfaceC2679b;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2745p;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
/* renamed from: j$.time.format.u */
/* loaded from: classes2.dex */
class C2711u implements InterfaceC2740k {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2679b f570a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC2740k f571b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2684g f572c;

    /* renamed from: d */
    final /* synthetic */ AbstractC2724n f573d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2711u(InterfaceC2679b interfaceC2679b, InterfaceC2740k interfaceC2740k, InterfaceC2684g interfaceC2684g, AbstractC2724n abstractC2724n) {
        this.f570a = interfaceC2679b;
        this.f571b = interfaceC2740k;
        this.f572c = interfaceC2684g;
        this.f573d = abstractC2724n;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public /* synthetic */ int mo740c(InterfaceC2744o interfaceC2744o) {
        return AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return (this.f570a == null || !interfaceC2744o.mo723h()) ? this.f571b.mo739d(interfaceC2744o) : ((C2686d) this.f570a).mo739d(interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        return (this.f570a == null || !interfaceC2744o.mo723h()) ? this.f571b.mo738e(interfaceC2744o) : ((C2686d) this.f570a).mo738e(interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        return interfaceC2753x == C2746q.f641a ? this.f572c : interfaceC2753x == C2745p.f640a ? this.f573d : interfaceC2753x == C2747r.f642a ? this.f571b.mo737g(interfaceC2753x) : interfaceC2753x.mo722a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return (this.f570a == null || !interfaceC2744o.mo723h()) ? this.f571b.mo736i(interfaceC2744o) : ((C2686d) this.f570a).mo736i(interfaceC2744o);
    }
}
