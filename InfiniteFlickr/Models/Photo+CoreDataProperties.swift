//
//  Photo+CoreDataProperties.swift
//  InfiniteFlickr
//
//  Created by Julio Estrada on 5/15/18.
//  Copyright © 2018 Julio Estrada. All rights reserved.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var dateTaken: NSDate?
    @NSManaged public var photoID: String?
    @NSManaged public var remoteURL: NSURL?
    @NSManaged public var title: String?
    @NSManaged public var isFavorited: Bool

}
