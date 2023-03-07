package org.bouncycastle.util;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Map;
/* loaded from: classes4.dex */
public class Properties {
    private static final ThreadLocal threadProperties = new ThreadLocal();

    private static String fetchProperty(final String str) {
        return (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.bouncycastle.util.Properties.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                Map map = (Map) Properties.threadProperties.get();
                return map != null ? map.get(str) : System.getProperty(str);
            }
        });
    }

    public static boolean isOverrideSet(String str) {
        try {
            String fetchProperty = fetchProperty(str);
            if (fetchProperty != null) {
                return "true".equals(Strings.toLowerCase(fetchProperty));
            }
        } catch (AccessControlException unused) {
        }
        return false;
    }
}
