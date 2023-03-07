package com.google.mlkit.p023nl.languageid;

import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.p023nl.languageid.LanguageIdentifierImpl;
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* renamed from: com.google.mlkit.nl.languageid.LanguageIdentification */
/* loaded from: classes3.dex */
public class LanguageIdentification {
    public static LanguageIdentifier getClient() {
        return ((LanguageIdentifierImpl.Factory) MlKitContext.getInstance().get(LanguageIdentifierImpl.Factory.class)).create(LanguageIdentificationOptions.zza);
    }
}
