package com.google.firebase.firestore;

import org.telegram.messenger.SaveToGallerySettingsHelper;
/* loaded from: classes3.dex */
public final class FirebaseFirestoreSettings {
    private final long cacheSizeBytes;
    private final String host;
    private final boolean persistenceEnabled;
    private final boolean sslEnabled;

    /* loaded from: classes3.dex */
    public static final class Builder {
        private String host = "firestore.googleapis.com";
        private boolean sslEnabled = true;
        private boolean persistenceEnabled = true;
        private long cacheSizeBytes = SaveToGallerySettingsHelper.DEFAULT_VIDEO_LIMIT;

        public FirebaseFirestoreSettings build() {
            if (!this.sslEnabled && this.host.equals("firestore.googleapis.com")) {
                throw new IllegalStateException("You can't set the 'sslEnabled' setting unless you also set a non-default 'host'.");
            }
            return new FirebaseFirestoreSettings(this);
        }
    }

    private FirebaseFirestoreSettings(Builder builder) {
        this.host = builder.host;
        this.sslEnabled = builder.sslEnabled;
        this.persistenceEnabled = builder.persistenceEnabled;
        this.cacheSizeBytes = builder.cacheSizeBytes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FirebaseFirestoreSettings.class != obj.getClass()) {
            return false;
        }
        FirebaseFirestoreSettings firebaseFirestoreSettings = (FirebaseFirestoreSettings) obj;
        return this.host.equals(firebaseFirestoreSettings.host) && this.sslEnabled == firebaseFirestoreSettings.sslEnabled && this.persistenceEnabled == firebaseFirestoreSettings.persistenceEnabled && this.cacheSizeBytes == firebaseFirestoreSettings.cacheSizeBytes;
    }

    public int hashCode() {
        return (((((this.host.hashCode() * 31) + (this.sslEnabled ? 1 : 0)) * 31) + (this.persistenceEnabled ? 1 : 0)) * 31) + ((int) this.cacheSizeBytes);
    }

    public String toString() {
        return "FirebaseFirestoreSettings{host=" + this.host + ", sslEnabled=" + this.sslEnabled + ", persistenceEnabled=" + this.persistenceEnabled + ", cacheSizeBytes=" + this.cacheSizeBytes + "}";
    }

    public String getHost() {
        return this.host;
    }

    public boolean isSslEnabled() {
        return this.sslEnabled;
    }

    public boolean isPersistenceEnabled() {
        return this.persistenceEnabled;
    }

    public long getCacheSizeBytes() {
        return this.cacheSizeBytes;
    }
}
