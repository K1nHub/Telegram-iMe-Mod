package org.bouncycastle.jce.provider;

import java.util.HashMap;
import java.util.HashSet;
import org.bouncycastle.jcajce.provider.config.ProviderConfigurationPermission;
/* loaded from: classes6.dex */
class BouncyCastleProviderConfiguration {
    static {
        new ProviderConfigurationPermission("BC", "threadLocalEcImplicitlyCa");
        new ProviderConfigurationPermission("BC", "ecImplicitlyCa");
        new ProviderConfigurationPermission("BC", "threadLocalDhDefaultParams");
        new ProviderConfigurationPermission("BC", "DhDefaultParams");
        new ProviderConfigurationPermission("BC", "acceptableEcCurves");
        new ProviderConfigurationPermission("BC", "additionalEcParameters");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BouncyCastleProviderConfiguration() {
        new ThreadLocal();
        new ThreadLocal();
        new HashSet();
        new HashMap();
    }
}
