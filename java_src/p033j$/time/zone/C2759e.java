package p033j$.time.zone;

import java.security.PrivilegedAction;
import java.util.List;
/* renamed from: j$.time.zone.e */
/* loaded from: classes2.dex */
class C2759e implements PrivilegedAction {

    /* renamed from: a */
    final /* synthetic */ List f663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2759e(List list) {
        this.f663a = list;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            AbstractC2761g.m701e(new C2760f());
            return null;
        }
        try {
            AbstractC2761g abstractC2761g = (AbstractC2761g) AbstractC2761g.class.cast(Class.forName(property, true, AbstractC2761g.class.getClassLoader()).newInstance());
            AbstractC2761g.m701e(abstractC2761g);
            this.f663a.add(abstractC2761g);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
