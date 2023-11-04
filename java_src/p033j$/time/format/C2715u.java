package p033j$.time.format;

import p033j$.time.AbstractC2728n;
import p033j$.time.C2690d;
import p033j$.time.chrono.InterfaceC2683b;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2749p;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
/* renamed from: j$.time.format.u */
/* loaded from: classes2.dex */
class C2715u implements InterfaceC2744k {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2683b f570a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC2744k f571b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2688g f572c;

    /* renamed from: d */
    final /* synthetic */ AbstractC2728n f573d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2715u(InterfaceC2683b interfaceC2683b, InterfaceC2744k interfaceC2744k, InterfaceC2688g interfaceC2688g, AbstractC2728n abstractC2728n) {
        this.f570a = interfaceC2683b;
        this.f571b = interfaceC2744k;
        this.f572c = interfaceC2688g;
        this.f573d = abstractC2728n;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public /* synthetic */ int mo741c(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return (this.f570a == null || !interfaceC2748o.mo724h()) ? this.f571b.mo740d(interfaceC2748o) : ((C2690d) this.f570a).mo740d(interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        return (this.f570a == null || !interfaceC2748o.mo724h()) ? this.f571b.mo739e(interfaceC2748o) : ((C2690d) this.f570a).mo739e(interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        return interfaceC2757x == C2750q.f641a ? this.f572c : interfaceC2757x == C2749p.f640a ? this.f573d : interfaceC2757x == C2751r.f642a ? this.f571b.mo738g(interfaceC2757x) : interfaceC2757x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return (this.f570a == null || !interfaceC2748o.mo724h()) ? this.f571b.mo737i(interfaceC2748o) : ((C2690d) this.f570a).mo737i(interfaceC2748o);
    }
}
