package p033j$.time.zone;

import java.security.PrivilegedAction;
import java.util.List;
/* renamed from: j$.time.zone.e */
/* loaded from: classes2.dex */
class C2764e implements PrivilegedAction {

    /* renamed from: a */
    final /* synthetic */ List f663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2764e(List list) {
        this.f663a = list;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            AbstractC2766g.m698e(new C2765f());
            return null;
        }
        try {
            AbstractC2766g abstractC2766g = (AbstractC2766g) AbstractC2766g.class.cast(Class.forName(property, true, AbstractC2766g.class.getClassLoader()).newInstance());
            AbstractC2766g.m698e(abstractC2766g);
            this.f663a.add(abstractC2766g);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
