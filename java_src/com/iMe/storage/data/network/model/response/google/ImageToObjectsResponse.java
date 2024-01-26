package com.iMe.storage.data.network.model.response.google;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ImageToObjectsResponse.kt */
/* loaded from: classes3.dex */
public final class ImageToObjectsResponse {
    private final List<RecognizedImageObject> recognizedObjects;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ImageToObjectsResponse copy$default(ImageToObjectsResponse imageToObjectsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = imageToObjectsResponse.recognizedObjects;
        }
        return imageToObjectsResponse.copy(list);
    }

    public final List<RecognizedImageObject> component1() {
        return this.recognizedObjects;
    }

    public final ImageToObjectsResponse copy(List<RecognizedImageObject> recognizedObjects) {
        Intrinsics.checkNotNullParameter(recognizedObjects, "recognizedObjects");
        return new ImageToObjectsResponse(recognizedObjects);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ImageToObjectsResponse) && Intrinsics.areEqual(this.recognizedObjects, ((ImageToObjectsResponse) obj).recognizedObjects);
    }

    public int hashCode() {
        return this.recognizedObjects.hashCode();
    }

    public String toString() {
        return "ImageToObjectsResponse(recognizedObjects=" + this.recognizedObjects + ')';
    }

    public ImageToObjectsResponse(List<RecognizedImageObject> recognizedObjects) {
        Intrinsics.checkNotNullParameter(recognizedObjects, "recognizedObjects");
        this.recognizedObjects = recognizedObjects;
    }

    public final List<RecognizedImageObject> getRecognizedObjects() {
        return this.recognizedObjects;
    }

    /* compiled from: ImageToObjectsResponse.kt */
    /* loaded from: classes3.dex */
    public static final class RecognizedImageObject {
        private final String entityId;
        private final String recognizedObject;
        private final double score;

        public static /* synthetic */ RecognizedImageObject copy$default(RecognizedImageObject recognizedImageObject, String str, double d, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = recognizedImageObject.recognizedObject;
            }
            if ((i & 2) != 0) {
                d = recognizedImageObject.score;
            }
            if ((i & 4) != 0) {
                str2 = recognizedImageObject.entityId;
            }
            return recognizedImageObject.copy(str, d, str2);
        }

        public final String component1() {
            return this.recognizedObject;
        }

        public final double component2() {
            return this.score;
        }

        public final String component3() {
            return this.entityId;
        }

        public final RecognizedImageObject copy(String recognizedObject, double d, String entityId) {
            Intrinsics.checkNotNullParameter(recognizedObject, "recognizedObject");
            Intrinsics.checkNotNullParameter(entityId, "entityId");
            return new RecognizedImageObject(recognizedObject, d, entityId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RecognizedImageObject) {
                RecognizedImageObject recognizedImageObject = (RecognizedImageObject) obj;
                return Intrinsics.areEqual(this.recognizedObject, recognizedImageObject.recognizedObject) && Double.compare(this.score, recognizedImageObject.score) == 0 && Intrinsics.areEqual(this.entityId, recognizedImageObject.entityId);
            }
            return false;
        }

        public int hashCode() {
            return (((this.recognizedObject.hashCode() * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.score)) * 31) + this.entityId.hashCode();
        }

        public String toString() {
            return "RecognizedImageObject(recognizedObject=" + this.recognizedObject + ", score=" + this.score + ", entityId=" + this.entityId + ')';
        }

        public RecognizedImageObject(String recognizedObject, double d, String entityId) {
            Intrinsics.checkNotNullParameter(recognizedObject, "recognizedObject");
            Intrinsics.checkNotNullParameter(entityId, "entityId");
            this.recognizedObject = recognizedObject;
            this.score = d;
            this.entityId = entityId;
        }

        public final String getRecognizedObject() {
            return this.recognizedObject;
        }

        public final double getScore() {
            return this.score;
        }

        public final String getEntityId() {
            return this.entityId;
        }
    }
}
