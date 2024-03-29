package com.google.firebase.platforminfo;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_LibraryVersion extends LibraryVersion {
    private final String libraryName;
    private final String version;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_LibraryVersion(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.libraryName = str;
        Objects.requireNonNull(str2, "Null version");
        this.version = str2;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String getLibraryName() {
        return this.libraryName;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String getVersion() {
        return this.version;
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.libraryName + ", version=" + this.version + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LibraryVersion) {
            LibraryVersion libraryVersion = (LibraryVersion) obj;
            return this.libraryName.equals(libraryVersion.getLibraryName()) && this.version.equals(libraryVersion.getVersion());
        }
        return false;
    }

    public int hashCode() {
        return ((this.libraryName.hashCode() ^ 1000003) * 1000003) ^ this.version.hashCode();
    }
}
