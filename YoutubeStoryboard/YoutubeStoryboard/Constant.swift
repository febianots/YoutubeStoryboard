//
//  Constant.swift
//  YoutubeStoryboard
//
//  Created by MAC on 15/03/21.
//

import Foundation

struct Constant{
    static var API_KEY = "AIzaSyCpO9mR7oyTIsED8yT2QyRQ4kN_EshaE1U"
    static var PLAYLIST_ID = "PLqB2JftS7WjYkDbhN4oXrKj5jyEt8MhjD"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constant.PLAYLIST_ID)&key=\(Constant.API_KEY)"
}
